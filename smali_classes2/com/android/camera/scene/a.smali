.class public final synthetic Lcom/android/camera/scene/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic wb:Lcom/android/camera/scene/ASDResultParse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/ASDResultParse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/a;->wb:Lcom/android/camera/scene/ASDResultParse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scene/a;->wb:Lcom/android/camera/scene/ASDResultParse;

    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->wf()V

    return-void
.end method
