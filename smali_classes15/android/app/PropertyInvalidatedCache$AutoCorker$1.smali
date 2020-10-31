.class Landroid/app/PropertyInvalidatedCache$AutoCorker$1;
.super Landroid/os/Handler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;


# direct methods
.method constructor <init>(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;->this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;->this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    # invokes: Landroid/app/PropertyInvalidatedCache$AutoCorker;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->access$000(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Message;)V

    return-void
.end method
