.class public final synthetic Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$2:I

    iput p4, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$3:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$2:I

    iget v3, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$InjectorImpl$Mi1gUXOy2QrYPv_nmr6rZeOneQU;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->lambda$resolveActivityAsUser$0$IntentForwarderActivity$InjectorImpl(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method
