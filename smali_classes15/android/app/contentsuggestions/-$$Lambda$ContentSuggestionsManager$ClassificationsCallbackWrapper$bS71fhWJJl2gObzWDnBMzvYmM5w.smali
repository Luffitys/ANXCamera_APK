.class public final synthetic Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    iput p2, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$1:I

    iput-object p3, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    iget v1, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$1:I

    iget-object v2, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->lambda$onContentClassificationsAvailable$0$ContentSuggestionsManager$ClassificationsCallbackWrapper(ILjava/util/List;)V

    return-void
.end method
