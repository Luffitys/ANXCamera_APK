.class Lmiui/hybrid/feature/Barcode$1;
.super Lmiui/hybrid/LifecycleListener;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Barcode;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Barcode;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;

.field final synthetic val$request:Lmiui/hybrid/Request;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Barcode;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .registers 4

    iput-object p1, p0, Lmiui/hybrid/feature/Barcode$1;->this$0:Lmiui/hybrid/feature/Barcode;

    iput-object p2, p0, Lmiui/hybrid/feature/Barcode$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Barcode$1;->val$request:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    # getter for: Lmiui/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I
    invoke-static {}, Lmiui/hybrid/feature/Barcode;->access$000()I

    move-result v0

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lmiui/hybrid/feature/Barcode$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1b

    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/hybrid/feature/Barcode$1;->this$0:Lmiui/hybrid/feature/Barcode;

    # invokes: Lmiui/hybrid/feature/Barcode;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    invoke-static {v2, p3}, Lmiui/hybrid/feature/Barcode;->access$100(Lmiui/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    goto :goto_2c

    :cond_1b
    if-nez p2, :cond_25

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_2c

    :cond_25
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    :goto_2c
    iget-object v1, p0, Lmiui/hybrid/feature/Barcode$1;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_35
    return-void
.end method
