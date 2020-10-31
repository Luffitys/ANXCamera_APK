.class public final Lcom/miui/internal/search/CloudKeywordsHolder$Builder;
.super Ljava/lang/Object;
.source "CloudKeywordsHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/search/CloudKeywordsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keywordsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->keywordsMap:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->keywordsMap:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/miui/internal/search/CloudKeywordsHolder;
    .registers 3

    new-instance v0, Lcom/miui/internal/search/CloudKeywordsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/search/CloudKeywordsHolder;-><init>(Lcom/miui/internal/search/CloudKeywordsHolder$Builder;Lcom/miui/internal/search/CloudKeywordsHolder$1;)V

    return-object v0
.end method

.method public setKeywords(Landroid/util/ArrayMap;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/internal/search/CloudKeywordsHolder$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->keywordsMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
