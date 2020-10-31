.class Lmiui/hybrid/feature/Contact$2;
.super Lmiui/hybrid/LifecycleListener;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Contact;->pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Contact;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;

.field final synthetic val$request:Lmiui/hybrid/Request;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Contact;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .registers 4

    iput-object p1, p0, Lmiui/hybrid/feature/Contact$2;->this$0:Lmiui/hybrid/feature/Contact;

    iput-object p2, p0, Lmiui/hybrid/feature/Contact$2;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    iget-object v0, p0, Lmiui/hybrid/feature/Contact$2;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_50

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2b

    iget-object v1, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lmiui/hybrid/feature/Contact$2$1;

    invoke-direct {v2, p0, v1}, Lmiui/hybrid/feature/Contact$2$1;-><init>(Lmiui/hybrid/feature/Contact$2;Landroid/content/ContentResolver;)V

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_50

    :cond_2b
    if-nez p2, :cond_40

    iget-object v0, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v0}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0x64

    const-string v3, "cancel"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    goto :goto_50

    :cond_40
    iget-object v0, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v0}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_50
    :goto_50
    return-void
.end method
