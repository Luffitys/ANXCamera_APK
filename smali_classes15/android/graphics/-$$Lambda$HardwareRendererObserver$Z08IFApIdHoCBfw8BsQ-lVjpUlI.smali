.class public final synthetic Landroid/graphics/-$$Lambda$HardwareRendererObserver$Z08IFApIdHoCBfw8BsQ-lVjpUlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/HardwareRendererObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/HardwareRendererObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/-$$Lambda$HardwareRendererObserver$Z08IFApIdHoCBfw8BsQ-lVjpUlI;->f$0:Landroid/graphics/HardwareRendererObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/-$$Lambda$HardwareRendererObserver$Z08IFApIdHoCBfw8BsQ-lVjpUlI;->f$0:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0}, Landroid/graphics/HardwareRendererObserver;->lambda$notifyDataAvailable$0$HardwareRendererObserver()V

    return-void
.end method
