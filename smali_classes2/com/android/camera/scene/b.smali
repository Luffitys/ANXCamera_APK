.class public final synthetic Lcom/android/camera/scene/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Ab:I

.field private final synthetic Bb:I

.field private final synthetic Cb:I

.field private final synthetic wb:Lcom/android/camera/scene/ASDResultParse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/ASDResultParse;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/b;->wb:Lcom/android/camera/scene/ASDResultParse;

    iput p2, p0, Lcom/android/camera/scene/b;->Ab:I

    iput p3, p0, Lcom/android/camera/scene/b;->Bb:I

    iput p4, p0, Lcom/android/camera/scene/b;->Cb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/scene/b;->wb:Lcom/android/camera/scene/ASDResultParse;

    iget v1, p0, Lcom/android/camera/scene/b;->Ab:I

    iget v2, p0, Lcom/android/camera/scene/b;->Bb:I

    iget p0, p0, Lcom/android/camera/scene/b;->Cb:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/scene/ASDResultParse;->a(III)V

    return-void
.end method
