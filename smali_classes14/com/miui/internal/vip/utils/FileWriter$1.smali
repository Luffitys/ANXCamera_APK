.class Lcom/miui/internal/vip/utils/FileWriter$1;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mRealPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    :try_start_22
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_41

    :catch_30
    move-exception v0

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->onFileOperationError()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "CacheFileWriterFileWriter, create file failed, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_41
    return-void
.end method
