.class public final synthetic Lcom/android/camera/scene/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/scene/AbASDResultParse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/AbASDResultParse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/b;->ub:Lcom/android/camera/scene/AbASDResultParse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scene/b;->ub:Lcom/android/camera/scene/AbASDResultParse;

    invoke-virtual {p0}, Lcom/android/camera/scene/AbASDResultParse;->Cd()V

    return-void
.end method
