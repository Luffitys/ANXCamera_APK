.class Landroidx/core/provider/FontsContractCompat$4$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/core/provider/FontsContractCompat$4;


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$4;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4$2;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$4$2;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
