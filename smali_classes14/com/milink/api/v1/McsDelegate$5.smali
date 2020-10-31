.class Lcom/milink/api/v1/McsDelegate$5;
.super Ljava/lang/Object;
.source "McsDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDelegate;->onPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDelegate;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate$5;->this$0:Lcom/milink/api/v1/McsDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$5;->this$0:Lcom/milink/api/v1/McsDelegate;

    # getter for: Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$5;->this$0:Lcom/milink/api/v1/McsDelegate;

    # getter for: Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onPlaying()V

    :cond_11
    return-void
.end method
