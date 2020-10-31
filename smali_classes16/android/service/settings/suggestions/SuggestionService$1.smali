.class Landroid/service/settings/suggestions/SuggestionService$1;
.super Landroid/service/settings/suggestions/ISuggestionService$Stub;
.source "SuggestionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/suggestions/SuggestionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/settings/suggestions/SuggestionService;


# direct methods
.method constructor <init>(Landroid/service/settings/suggestions/SuggestionService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-direct {p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .registers 3

    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0, p1}, Landroid/service/settings/suggestions/SuggestionService;->onSuggestionDismissed(Landroid/service/settings/suggestions/Suggestion;)V

    return-void
.end method

.method public getSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0}, Landroid/service/settings/suggestions/SuggestionService;->onGetSuggestions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .registers 3

    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0, p1}, Landroid/service/settings/suggestions/SuggestionService;->onSuggestionLaunched(Landroid/service/settings/suggestions/Suggestion;)V

    return-void
.end method
