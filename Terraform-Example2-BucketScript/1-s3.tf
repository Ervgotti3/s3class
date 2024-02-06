resource "aws_s3_bucket" "bucket" {
  bucket = "daughtersofzion"

  tags = {
    Name        = "Build Stage"
    Environment = "Dev"
  }
}

#Bucket Objects
resource "aws_s3_object" "file" {
  bucket = aws_s3_bucket.bucket.id
  key    = "index.html"
 source = "C:/AWS/belezabucket/src/index.html"
}

#adding object/image
resource "aws_s3_object" "image"{

 bucket = aws_s3_bucket.bucket.id
 key    = "Brazilbeauty.jpg"
 source = "C:/AWS/belezabucket/src/Brazilbeauty.jpg"
}

#adding object/image2
resource "aws_s3_object" "image2"{

 bucket = aws_s3_bucket.bucket.id
 key    = "BrazilBeauty2.jpg"
 source = "C:/AWS/belezabucket/src/BrazilBeauty2.jpg"
}

#adding object/image3
resource "aws_s3_object" "image3"{

 bucket = aws_s3_bucket.bucket.id
 key    = "IsraeliteSis.jpg"
 source = "C:/AWS/belezabucket/src/IsraeliteSis.jpg"
}

#adding object/image4
resource "aws_s3_object" "image4"{

 bucket = aws_s3_bucket.bucket.id
 key    = "hell_noo.jpg"
 source = "C:/AWS/belezabucket/src/hell_noo.jpg"
}
