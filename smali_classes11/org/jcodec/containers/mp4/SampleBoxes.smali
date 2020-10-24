.class public Lorg/jcodec/containers/mp4/SampleBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 7

    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-class v1, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-class v2, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-class v3, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/Boxes;->clear()V

    const-string v4, "ap4h"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apch"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apcn"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apcs"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apco"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "avc1"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "cvid"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "jpeg"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "smc "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "rle "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "rpza"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "kpcd"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "png "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mjpa"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mjpb"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "SVQ1"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "SVQ3"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mp4v"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "dvc "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "dvcp"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "gif "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "h263"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "tiff"

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "raw "

    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "2vuY"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "yuv2"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v308"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v408"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v216"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v410"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v210"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "m2v1"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "m1v1"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "xd5b"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "dv5n"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "jp2h"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "mjp2"

    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ac-3"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "cac3"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ima4"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aac "

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "celp"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "hvxc"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "twvq"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, ".mp1"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, ".mp2"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "midi"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "apvs"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "alac"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aach"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacl"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aace"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacf"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacp"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacs"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "samr"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "AUDB"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "ilbc"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x4

    new-array v6, v5, [B

    fill-array-data v6, :array_0

    invoke-static {v6}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    invoke-static {v5}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aes3"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "NONE"

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "twos"

    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "sowt"

    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "MAC3 "

    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "MAC6 "

    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "fl32"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "fl64"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "in24"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "in32"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ulaw"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "alaw"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "dvca"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "QDMC"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "QDM2"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "Qclp"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, ".mp3"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "mp4a"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "lpcm"

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "tmcd"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "time"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "c608"

    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "c708"

    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "text"

    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "fdsc"

    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

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
