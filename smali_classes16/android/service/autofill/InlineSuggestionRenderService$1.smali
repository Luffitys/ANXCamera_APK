.class Landroid/service/autofill/InlineSuggestionRenderService$1;
.super Landroid/util/LruCache;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/InlineSuggestionRenderService;


# direct methods
.method constructor <init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V
    .registers 3

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$1;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 7

    if-eqz p1, :cond_c

    const-string v0, "InlineSuggestionRenderService"

    const-string v1, "Hit max=30 entries in the cache. Releasing oldest one to make space."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    :cond_c
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/autofill/InlineSuggestionRenderService$1;->entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
