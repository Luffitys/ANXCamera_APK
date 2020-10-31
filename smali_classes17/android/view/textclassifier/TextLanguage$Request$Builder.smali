.class public final Landroid/view/textclassifier/TextLanguage$Request$Builder;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLanguage$Request;
    .registers 5

    new-instance v0, Landroid/view/textclassifier/TextLanguage$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_e

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_e
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLanguage$Request$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method
