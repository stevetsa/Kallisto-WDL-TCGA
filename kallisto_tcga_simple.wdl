task quant {

  File CDNA
  File FASTQ

  command <<<
    mkdir temp
    chmod 777 temp
    tar -xvzf ${FASTQ}    
    kallisto index -i CDNA.index ${CDNA}
    kallisto quant -o temp -i CDNA.index *_1.fastq *_2.fastq
    tar -zcvf quant.tar.gz temp    
  >>>

  runtime {
    docker : "stevetsa/docker-kallisto:latest"
    disks: "local-disk 100 SSD"
    memory: "20G"
    cpu: "8"
  }

  output {
    File CDNAindex = "CDNA.index"
    File TAR = "quant.tar.gz"
  }
}


workflow kallisto {
  File CDNA
  File FASTQ

  call quant {
    input:
      CDNA = CDNA,
      FASTQ = FASTQ
  }
}

