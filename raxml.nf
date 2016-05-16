#!/usr/bin/env nextflow
/*
 * Copyright (c) 2016, Centre for Genomic Regulation (CRG) and the authors.
 *
 *   This file is part of 'Shootstrap-NF'.
 *
 *   Shootstrap-NF is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Shootstrap-NF is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Shootstrap-NF.  If not, see <http://www.gnu.org/licenses/>.
 */

/* 
 * Main Shootstrap-NF script
 *
 * @authors
 * Maria Chatzou <mxatzou@gmail.com>
 * Paolo Di Tommaso <paolo.ditommaso@gmail.com>
 */
 

#!/usr/bin/env nextflow

params.base_dir="$baseDir/data/prestin_SLC26A5.35eutheria.original.msa"
params.out_dir="."

params.rand_value=9
params.tag_name="PRESTIN"


file_names=Channel.fromPath(params.base_dir)

process get_raxml_tree{
  publishDir params.out_dir, mode: "copy"

  input:
      set file(seq_file) from file_names
  output:
      file "RAxML_bestTree*"
  
  """
      raxmlHPC -T $task.cpus -f d -j -m PROTGAMMALG -s $seq_file -n $params.tag_name -p $params.rand_value
  """

}
