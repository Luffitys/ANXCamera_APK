.class public abstract Landroid/service/settings/suggestions/SuggestionService;
.super Landroid/app/Service;
.source "SuggestionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SuggestionService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    new-instance v0, Landroid/service/settings/suggestions/SuggestionService$1;

    invoke-direct {v0, p0}, Landroid/service/settings/suggestions/SuggestionService$1;-><init>(Landroid/service/settings/suggestions/SuggestionService;)V

    return-object v0
.end method

.method public abstract onGetSuggestions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onSuggestionDismissed(Landroid/service/settings/suggestions/Suggestion;)V
.end method

.method public abstract onSuggestionLaunched(Landroid/service/settings/suggestions/Suggestion;)V
.end method
