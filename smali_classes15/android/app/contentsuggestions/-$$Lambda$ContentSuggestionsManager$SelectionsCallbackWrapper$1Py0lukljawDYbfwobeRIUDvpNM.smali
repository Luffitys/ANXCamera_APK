.class public final synthetic Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;ILjava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    iput p2, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$1:I

    iput-object p3, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$0:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    iget v1, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$1:I

    iget-object v2, p0, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$SelectionsCallbackWrapper$1Py0lukljawDYbfwobeRIUDvpNM;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->lambda$onContentSelectionsAvailable$0$ContentSuggestionsManager$SelectionsCallbackWrapper(ILjava/util/List;)V

    return-void
.end method
