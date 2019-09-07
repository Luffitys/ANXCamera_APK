.class public Lorg/jcodec/containers/mp4/SampleBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source "SampleBoxes.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/Boxes;->clear()V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "ap4h"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apch"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apcn"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apcs"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apco"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "avc1"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "cvid"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "jpeg"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "smc "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "rle "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "rpza"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "kpcd"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "png "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mjpa"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mjpb"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "SVQ1"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "SVQ3"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mp4v"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "dvc "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "dvcp"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "gif "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "h263"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "tiff"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "raw "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "2vuY"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "yuv2"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v308"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v408"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v216"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v410"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v210"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "m2v1"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "m1v1"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "xd5b"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "dv5n"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "jp2h"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "mjp2"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "ac-3"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "cac3"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "ima4"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aac "

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "celp"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "hvxc"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "twvq"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, ".mp1"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, ".mp2"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "midi"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "apvs"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "alac"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aach"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacl"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aace"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacf"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacp"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacs"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "samr"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "AUDB"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "ilbc"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x4

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v3, v4}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v0, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aes3"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "NONE"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "twos"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "sowt"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "MAC3 "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "MAC6 "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "fl32"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "fl64"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "in24"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "in32"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "ulaw"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "alaw"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "dvca"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "QDMC"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "QDM2"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "Qclp"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, ".mp3"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "mp4a"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "lpcm"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-string v1, "tmcd"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "c608"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "c708"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "text"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "fdsc"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x31t
    .end array-data
.end method
