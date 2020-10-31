.class Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineContentCallbackImplParceling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InlineSuggestion$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>()V

    return-void
.end method


# virtual methods
.method public parcel(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/os/Parcel;I)V
    .registers 4

    return-void
.end method

.method public bridge synthetic parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4

    check-cast p1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;->parcel(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public unparcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;->unparcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object p1

    return-object p1
.end method
