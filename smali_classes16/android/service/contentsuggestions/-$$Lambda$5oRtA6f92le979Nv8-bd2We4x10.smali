.class public final synthetic Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;

    invoke-direct {v0}, Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;-><init>()V

    sput-object v0, Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;->INSTANCE:Landroid/service/contentsuggestions/-$$Lambda$5oRtA6f92le979Nv8-bd2We4x10;

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

    check-cast p1, Landroid/service/contentsuggestions/ContentSuggestionsService;

    check-cast p2, Landroid/app/contentsuggestions/ClassificationsRequest;

    check-cast p3, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    invoke-virtual {p1, p2, p3}, Landroid/service/contentsuggestions/ContentSuggestionsService;->onClassifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V

    return-void
.end method
