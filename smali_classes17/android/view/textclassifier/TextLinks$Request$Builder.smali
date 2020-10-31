.class public final Landroid/view/textclassifier/TextLinks$Request$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mExtras:Landroid/os/Bundle;

.field private mLegacyFallback:Z

.field private mReferenceTime:Ljava/time/ZonedDateTime;

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLinks$Request;
    .registers 10

    new-instance v8, Landroid/view/textclassifier/TextLinks$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iget-boolean v4, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    iget-object v5, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_12
    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks$1;)V

    return-object v8
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    return-object p0
.end method

.method public setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object p0
.end method
