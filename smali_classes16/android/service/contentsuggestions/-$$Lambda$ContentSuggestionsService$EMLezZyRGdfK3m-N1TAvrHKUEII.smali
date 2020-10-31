.class public final synthetic Landroid/service/contentsuggestions/-$$Lambda$ContentSuggestionsService$EMLezZyRGdfK3m-N1TAvrHKUEII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/contentsuggestions/IClassificationsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentsuggestions/-$$Lambda$ContentSuggestionsService$EMLezZyRGdfK3m-N1TAvrHKUEII;->f$0:Landroid/app/contentsuggestions/IClassificationsCallback;

    return-void
.end method


# virtual methods
.method public final onContentClassificationsAvailable(ILjava/util/List;)V
    .registers 4

    iget-object v0, p0, Landroid/service/contentsuggestions/-$$Lambda$ContentSuggestionsService$EMLezZyRGdfK3m-N1TAvrHKUEII;->f$0:Landroid/app/contentsuggestions/IClassificationsCallback;

    invoke-static {v0, p1, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->lambda$wrapClassificationCallback$1(Landroid/app/contentsuggestions/IClassificationsCallback;ILjava/util/List;)V

    return-void
.end method
