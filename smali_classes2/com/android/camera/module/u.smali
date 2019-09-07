.class public final synthetic Lcom/android/camera/module/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/u;->ub:Lcom/android/camera/module/LiveModuleSubVV;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/u;->ub:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->Ad()V

    return-void
.end method
