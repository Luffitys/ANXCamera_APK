.class final Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InitialSurroundingText"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mSelectionEnd:I

.field final mSelectionHead:I

.field final mSurroundingText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    iput v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    iput p3, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->getInitialTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;)I
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->getSelectionLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;I)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->getInitialSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->getInitialTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInitialSelectedText(I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1b

    :cond_13
    iget v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method private getInitialTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    add-int v3, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2a

    :cond_20
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    return-object v1
.end method

.method private getInitialTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    sub-int v3, v2, v0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    sub-int v3, v2, v0

    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    :goto_25
    return-object v1
.end method

.method private getSelectionLength()I
    .registers 3

    iget v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    iget v1, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSurroundingText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionHead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
