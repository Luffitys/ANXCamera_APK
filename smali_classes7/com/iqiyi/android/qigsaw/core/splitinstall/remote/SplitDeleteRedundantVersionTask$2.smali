.class Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method
