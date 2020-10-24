.class final Lcom/android/camera/network/download/ConnectionHelper$Holder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final reason:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    iput p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    return-void
.end method
