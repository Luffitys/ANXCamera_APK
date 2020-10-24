.class public final Lcom/android/camera/data/observeable/RxData$DataWrap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataWrap;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataWrap;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public isNull()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataWrap;->data:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
