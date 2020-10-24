.class public Lcom/xiaomi/idm/task/CallFuture$CallException;
.super Ljava/util/concurrent/ExecutionException;
.source ""


# instance fields
.field code:I

.field msg:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/xiaomi/idm/task/CallFuture$CallException;->code:I

    iput-object p2, p0, Lcom/xiaomi/idm/task/CallFuture$CallException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/task/CallFuture$CallException;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/task/CallFuture$CallException;->msg:Ljava/lang/String;

    return-object p0
.end method
