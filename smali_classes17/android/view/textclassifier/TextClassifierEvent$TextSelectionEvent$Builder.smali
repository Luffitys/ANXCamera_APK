.class public final Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
.super Landroid/view/textclassifier/TextClassifierEvent$Builder;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field mRelativeSuggestedWordEndIndex:I

.field mRelativeSuggestedWordStartIndex:I

.field mRelativeWordEndIndex:I

.field mRelativeWordStartIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(IILandroid/view/textclassifier/TextClassifierEvent$1;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent$1;)V

    return-object v0
.end method

.method bridge synthetic self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 1

    return-object p0
.end method

.method public setRelativeSuggestedWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordEndIndex:I

    return-object p0
.end method

.method public setRelativeSuggestedWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordStartIndex:I

    return-object p0
.end method

.method public setRelativeWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordEndIndex:I

    return-object p0
.end method

.method public setRelativeWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordStartIndex:I

    return-object p0
.end method
