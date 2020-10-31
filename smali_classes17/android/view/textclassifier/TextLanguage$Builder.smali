.class public final Landroid/view/textclassifier/TextLanguage$Builder;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mEntityConfidenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLanguage;
    .registers 6

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_6
    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/view/textclassifier/TextLanguage;

    iget-object v1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mId:Ljava/lang/String;

    new-instance v2, Landroid/view/textclassifier/EntityConfidence;

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    invoke-direct {v2, v3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextLanguage;-><init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage$1;)V

    return-object v0
.end method

.method public putLocale(Landroid/icu/util/ULocale;F)Landroid/view/textclassifier/TextLanguage$Builder;
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLanguage$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/view/textclassifier/TextLanguage$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method
