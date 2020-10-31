.class Lmiui/io/ResettableInputStream$1;
.super Ljava/lang/Object;
.source "ResettableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/io/ResettableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/io/ResettableInputStream;


# direct methods
.method constructor <init>(Lmiui/io/ResettableInputStream;)V
    .registers 2

    iput-object p1, p0, Lmiui/io/ResettableInputStream$1;->this$0:Lmiui/io/ResettableInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/io/ResettableInputStream$1;->this$0:Lmiui/io/ResettableInputStream;

    # getter for: Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;
    invoke-static {v0}, Lmiui/io/ResettableInputStream;->access$000(Lmiui/io/ResettableInputStream;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "ResettableInputStream"

    const-string v1, "InputStream is opened but never closed here"

    iget-object v2, p0, Lmiui/io/ResettableInputStream$1;->this$0:Lmiui/io/ResettableInputStream;

    # getter for: Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;
    invoke-static {v2}, Lmiui/io/ResettableInputStream;->access$000(Lmiui/io/ResettableInputStream;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    iget-object v0, p0, Lmiui/io/ResettableInputStream$1;->this$0:Lmiui/io/ResettableInputStream;

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1f

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
