.class public final synthetic Lcom/android/camera/scene/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/scene/ASDResultParse;

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/ASDResultParse;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/OooO0O0;->OooO00o:Lcom/android/camera/scene/ASDResultParse;

    iput p2, p0, Lcom/android/camera/scene/OooO0O0;->OooO0O0:I

    iput p3, p0, Lcom/android/camera/scene/OooO0O0;->OooO0OO:I

    iput p4, p0, Lcom/android/camera/scene/OooO0O0;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/scene/OooO0O0;->OooO00o:Lcom/android/camera/scene/ASDResultParse;

    iget v1, p0, Lcom/android/camera/scene/OooO0O0;->OooO0O0:I

    iget v2, p0, Lcom/android/camera/scene/OooO0O0;->OooO0OO:I

    iget p0, p0, Lcom/android/camera/scene/OooO0O0;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/scene/ASDResultParse;->OooO0Oo(III)V

    return-void
.end method
