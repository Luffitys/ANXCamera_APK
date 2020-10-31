.class public final synthetic Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$4WveOqCGJeRb08DN4p3fTmw8h_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$4WveOqCGJeRb08DN4p3fTmw8h_M;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$4WveOqCGJeRb08DN4p3fTmw8h_M;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-static {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V

    return-void
.end method
