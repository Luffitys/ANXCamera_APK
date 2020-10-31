.class Lcom/miui/internal/vip/utils/FileWriter$3;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;->writeToFile([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;

.field final synthetic val$copyBuff:[B

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;[BI)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$copyBuff:[B

    iput p3, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$copyBuff:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception v0

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->onFileOperationError()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "CacheFileWriterFileWriter, write failed, size = %d, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return-void
.end method
