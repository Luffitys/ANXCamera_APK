.class public final synthetic Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;->INSTANCE:Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/autofill/InlineSuggestionRenderService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/service/autofill/InlineSuggestionRenderService$2;->lambda$destroySuggestionViews$2(Ljava/lang/Object;II)V

    return-void
.end method
