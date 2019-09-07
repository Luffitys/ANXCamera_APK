.class public final synthetic Lcom/android/camera/scene/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/scene/AbASDResultParse;

.field private final synthetic vb:I

.field private final synthetic wb:I

.field private final synthetic zb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/AbASDResultParse;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/a;->ub:Lcom/android/camera/scene/AbASDResultParse;

    iput p2, p0, Lcom/android/camera/scene/a;->vb:I

    iput p3, p0, Lcom/android/camera/scene/a;->wb:I

    iput p4, p0, Lcom/android/camera/scene/a;->zb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/scene/a;->ub:Lcom/android/camera/scene/AbASDResultParse;

    iget v1, p0, Lcom/android/camera/scene/a;->vb:I

    iget v2, p0, Lcom/android/camera/scene/a;->wb:I

    iget p0, p0, Lcom/android/camera/scene/a;->zb:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/scene/AbASDResultParse;->a(III)V

    return-void
.end method
