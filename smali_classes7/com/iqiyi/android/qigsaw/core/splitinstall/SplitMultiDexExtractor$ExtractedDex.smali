.class Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ExtractedDex;
.super Ljava/io/File;
.source ""


# instance fields
.field crc:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ExtractedDex;->crc:J

    return-void
.end method
