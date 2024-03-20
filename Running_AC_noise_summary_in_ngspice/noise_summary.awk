#!/usr/bin/awk -f

# start of variables list
/^Variables:/ {
  varlist = 1
   n = 0
  next
}

# start of values list
/^Values:/ {
  varlist = 0
  values = 1
  n = 0
  next
}

# get variables list
varlist {
  vhash[$2] = n
  var[n++] = $2
}

# get values list
values && NF >= 1 {
  if(NF == 2)  value[n++] = $2 #first line has 2 fields, so get 2nd field
  else value[n++] = $1
}

# print variables and associated values - filter lines with 'onoise' pattern
END{
  first = 1
  for(i in var) {
    if(var[i] !~/onoise/) continue;
    # look only at total noise lines: v(onoise_total.m6) or  v(onoise_total_r1)
    if(var[i] ~/\.m[^.]*\)$/ || (var[i] ~ /total_r/ && var[i] !~/_1overf\)/ && var[i] !~/_thermal\)/) ) { 
      # get device name m6 from v(onoise_total.m6)
      dev = var[i]
      sub(/.*total\.m/, "m", dev)
      sub(/.*total_r/, "r", dev)
      sub(/\).*/,"", dev)
      # build v(onoise_total.m6.1overf) and v(onoise_total.m6.id) strings
      # or  v(onoise_total_r1_1overf) and v(onoise_total_r1_thermal)
      if(dev ~/^m/) {
        flicker = "v(onoise_total." dev ".1overf)"
        thermal = "v(onoise_total." dev ".id)"
      } else if(dev ~/^r/) {
        flicker = "v(onoise_total." dev ".1overf)"
        thermal = "v(onoise_total_" dev "_thermal)"
      }
 

      # if entries exist get value
      if(thermal in vhash) {
        th_value = value[vhash[thermal]]
      } else th_value = 0.0
      if(flicker in vhash) {
        fl_value = value[vhash[flicker]]
      } else fl_value = 0.0
      # Print table
      if(first) {
        print "MOS    TOTAL                  THERMAL                FLICKER"
        print ""
        first = 0
      }
      print dev, "   ", value[i], " " th_value, " " fl_value
    }
  }
}

########### NGSPICE SET UP PRIOR TO RUNNING THIS SCRIPT ##########

# 1. Run noise analysis with pts_per_summary = 1 ... reports noise data for each contributor.
# 2. setplot noise2 ... to access the integrated noise data
# 3. set filetype = ascii ... to enable a readable raw file
# 4. remozerovec
# 5. wite <name>.raw ... this is the .raw file the below .awk script will run on

########## AKW SCRIPT SET UP ##########

# 1. Save attached file "noise_summary.awk" to the rundir
# 2. chmod a+x noise_summary.awk ... sets the script to executable
# 3. Run the script with: ./noise_summary.awk <name>.raw > <name>.txt

########## AKW SCRIPT OUTPUT ##########

# Script will output the total / thermal / flicker integrated noise for each component as:
# MOS    TOTAL                  THERMAL                FLICKER

# Copyright: Stefan Schippers (2013)
