.class Lcom/miui/internal/vip/utils/FileWriter$4;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/FileWriter;->closeOutputStream()V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    goto :goto_39

    :cond_28
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/FileWriter;->mRealPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_53

    :cond_39
    :goto_39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CacheFileWriterFileWriter.close, download %s failed, delete"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    return-void
.end method
