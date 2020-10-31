.class public final Landroid/service/autofill/augmented/FillResponse;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillResponse$Builder;,
        Landroid/service/autofill/augmented/FillResponse$BaseBuilder;
    }
.end annotation


# instance fields
.field private mClientState:Landroid/os/Bundle;

.field private mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private mInlineSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/service/autofill/augmented/FillWindow;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/augmented/FillWindow;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    iput-object p2, p0, Landroid/service/autofill/augmented/FillResponse;->mInlineSuggestions:Ljava/util/List;

    iput-object p3, p0, Landroid/service/autofill/augmented/FillResponse;->mClientState:Landroid/os/Bundle;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static synthetic access$000()Landroid/service/autofill/augmented/FillWindow;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultInlineSuggestions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultClientState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static defaultClientState()Landroid/os/Bundle;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultInlineSuggestions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getClientState()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-object v0
.end method

.method public getInlineSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mInlineSuggestions:Ljava/util/List;

    return-object v0
.end method
