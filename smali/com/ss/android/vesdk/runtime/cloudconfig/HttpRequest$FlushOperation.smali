.class public abstract Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;
.source ""


# instance fields
.field private final flushable:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    return-void
.end method
