.class Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitMultiDex.lock"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
