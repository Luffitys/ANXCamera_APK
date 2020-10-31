.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_HINTS:I = 0x10

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_OPTIONS:I = 0x20

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_SESSION_ID:I = 0x800

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_TYPE:I = 0x8

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VALUE:I = 0x4

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VIEW_ID:I = 0x1

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VIRTUAL_VIEW_ID:I = 0x2

.field static final AUTOFILL_FLAGS_HAS_HINT_ID_ENTRY:I = 0x1000

.field static final AUTOFILL_FLAGS_HAS_HTML_INFO:I = 0x40

.field static final AUTOFILL_FLAGS_HAS_MAX_TEXT_EMS:I = 0x200

.field static final AUTOFILL_FLAGS_HAS_MAX_TEXT_LENGTH:I = 0x400

.field static final AUTOFILL_FLAGS_HAS_MIN_TEXT_EMS:I = 0x100

.field static final AUTOFILL_FLAGS_HAS_TEXT_ID_ENTRY:I = 0x80

.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL_DOMAIN:I = 0x80000

.field static final FLAGS_HAS_URL_SCHEME:I = 0x20000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillFlags:I

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHintIdEntry:Ljava/lang/String;

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mImportantForAutofill:I

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxEms:I

.field mMaxLength:I

.field mMinEms:I

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mTextIdEntry:Ljava/lang/String;

.field mWebDomain:Ljava/lang/String;

.field mWebScheme:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const v2, 0x22222222

    invoke-virtual {p1, v2, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v2

    iget v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iget-object v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    iget v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    iget v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    const/high16 v7, 0x200000

    and-int/2addr v7, v5

    if-eqz v7, :cond_59

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v0, :cond_59

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v0, :cond_59

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    :cond_59
    const/4 v0, 0x0

    if-eqz v6, :cond_101

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v4, :cond_64

    move v7, v4

    goto :goto_65

    :cond_64
    move v7, v1

    :goto_65
    iput-boolean v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_99

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_85

    new-instance v8, Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct {v8, v7, v9}, Landroid/view/autofill/AutofillId;-><init>(II)V

    iput-object v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    goto :goto_8c

    :cond_85
    new-instance v8, Landroid/view/autofill/AutofillId;

    invoke-direct {v8, v7}, Landroid/view/autofill/AutofillId;-><init>(I)V

    iput-object v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    :goto_8c
    and-int/lit16 v8, v6, 0x800

    if-eqz v8, :cond_99

    iget-object v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    :cond_99
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_a3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    :cond_a3
    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_ad

    invoke-virtual {v2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    :cond_ad
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_b9

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    :cond_b9
    and-int/lit8 v7, v6, 0x20

    if-eqz v7, :cond_c3

    invoke-virtual {v2}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    :cond_c3
    and-int/lit8 v7, v6, 0x40

    if-eqz v7, :cond_cf

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    :cond_cf
    and-int/lit16 v7, v6, 0x100

    if-eqz v7, :cond_d9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    :cond_d9
    and-int/lit16 v7, v6, 0x200

    if-eqz v7, :cond_e3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    :cond_e3
    and-int/lit16 v7, v6, 0x400

    if-eqz v7, :cond_ed

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    :cond_ed
    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_f7

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    :cond_f7
    and-int/lit16 v7, v6, 0x1000

    if-eqz v7, :cond_101

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    :cond_101
    const/high16 v7, 0x4000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_11f

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_13b

    :cond_11f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/lit16 v8, v7, 0x7fff

    iput v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0x7fff

    iput v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/lit16 v8, v7, 0x7fff

    iput v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0x7fff

    iput v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    :goto_13b
    const/high16 v7, 0x8000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_14c

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    :cond_14c
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v5

    if-eqz v7, :cond_164

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_164
    const/high16 v7, 0x10000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_16f

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    :cond_16f
    const/high16 v7, 0x20000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_17a

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    :cond_17a
    const/high16 v7, 0x2000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_189

    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    :cond_189
    const/high16 v7, 0x1000000

    and-int/2addr v7, v5

    if-eqz v7, :cond_19b

    new-instance v7, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v8, 0x800000

    and-int/2addr v8, v5

    if-nez v8, :cond_196

    move v1, v4

    :cond_196
    invoke-direct {v7, v2, v1}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_19b
    const/high16 v1, 0x40000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1a6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    :cond_1a6
    const/high16 v1, 0x20000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    :cond_1b1
    const/high16 v1, 0x80000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1bc

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    :cond_1bc
    const/high16 v1, 0x10000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1c9

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    :cond_1c9
    const/high16 v0, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1d4

    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    :cond_1d4
    const/high16 v0, 0x100000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1f2

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v1, 0x0

    :goto_1e2
    if-ge v1, v0, :cond_1f2

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v7, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v8, p2, 0x1

    invoke-direct {v7, p1, v8}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e2

    :cond_1f2
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getHintIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantForAutofill()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public getInputType()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getMaxTextEms()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public getMaxTextLength()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public getMinTextEms()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public getScrollX()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public getTextIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLineBaselines()[I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getTextSize()F
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getTextStyle()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getTop()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWebScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActivated()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAssistBlocked()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isContextClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 3

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isFocusable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFocused()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isOpaque()Z
    .registers 3

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSanitized()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .registers 2

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_2e
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 4

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_13

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_13
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_1b
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v6, 0xfffff

    and-int/2addr v5, v6

    const/4 v6, 0x0

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v8, 0x200000

    const/4 v9, -0x1

    if-eq v7, v9, :cond_18

    or-int/2addr v5, v8

    :cond_18
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v7, v7, -0x8000

    const/high16 v10, 0x4000000

    const/4 v12, 0x0

    if-nez v7, :cond_3c

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v7, v7, -0x8000

    if-nez v7, :cond_3c

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v7, v7, -0x8000

    if-eqz v7, :cond_2f

    const/4 v7, 0x1

    goto :goto_30

    :cond_2f
    move v7, v12

    :goto_30
    iget v13, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v13, v13, -0x8000

    if-eqz v13, :cond_38

    const/4 v13, 0x1

    goto :goto_39

    :cond_38
    move v13, v12

    :goto_39
    or-int/2addr v7, v13

    if-eqz v7, :cond_3d

    :cond_3c
    or-int/2addr v5, v10

    :cond_3d
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v13, 0x8000000

    if-nez v7, :cond_47

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v7, :cond_48

    :cond_47
    or-int/2addr v5, v13

    :cond_48
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v7, :cond_4f

    or-int/2addr v5, v14

    :cond_4f
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    const/high16 v15, 0x10000000

    if-eqz v7, :cond_59

    or-int/2addr v5, v15

    :cond_59
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v16

    const/high16 v16, 0x20000000

    if-eqz v7, :cond_65

    or-int v5, v5, v16

    :cond_65
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v17, 0x2000000

    if-eqz v7, :cond_6d

    or-int v5, v5, v17

    :cond_6d
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v18, 0x800000

    const/high16 v19, 0x1000000

    if-eqz v7, :cond_7f

    or-int v5, v5, v19

    invoke-virtual {v7}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v7

    if-nez v7, :cond_7f

    or-int v5, v5, v18

    :cond_7f
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v20, 0x40000

    if-eqz v7, :cond_87

    or-int v5, v5, v20

    :cond_87
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    const/high16 v21, 0x20000

    if-eqz v7, :cond_8f

    or-int v5, v5, v21

    :cond_8f
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    const/high16 v22, 0x80000

    if-eqz v7, :cond_97

    or-int v5, v5, v22

    :cond_97
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const/high16 v23, 0x10000

    if-eqz v7, :cond_9f

    or-int v5, v5, v23

    :cond_9f
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    const/high16 v24, 0x400000

    if-eqz v7, :cond_a7

    or-int v5, v5, v24

    :cond_a7
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v7, :cond_ae

    const/high16 v7, 0x100000

    or-int/2addr v5, v7

    :cond_ae
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v7, :cond_c6

    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v7

    if-eqz v7, :cond_bc

    or-int/lit8 v6, v6, 0x2

    :cond_bc
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v7

    if-eqz v7, :cond_c6

    or-int/lit16 v6, v6, 0x800

    :cond_c6
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_cc

    or-int/lit8 v6, v6, 0x4

    :cond_cc
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    if-eqz v7, :cond_d2

    or-int/lit8 v6, v6, 0x8

    :cond_d2
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v7, :cond_d8

    or-int/lit8 v6, v6, 0x10

    :cond_d8
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_de

    or-int/lit8 v6, v6, 0x20

    :cond_de
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v7, v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_e6

    or-int/lit8 v6, v6, 0x40

    :cond_e6
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    if-le v7, v9, :cond_ec

    or-int/lit16 v6, v6, 0x100

    :cond_ec
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    if-le v7, v9, :cond_f2

    or-int/lit16 v6, v6, 0x200

    :cond_f2
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    if-le v7, v9, :cond_f8

    or-int/lit16 v6, v6, 0x400

    :cond_f8
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_fe

    or-int/lit16 v6, v6, 0x80

    :cond_fe
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_104

    or-int/lit16 v6, v6, 0x1000

    :cond_104
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    move v7, v5

    if-eqz v6, :cond_114

    iget-boolean v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v11, :cond_112

    if-nez p3, :cond_114

    :cond_112
    and-int/lit16 v7, v5, -0x201

    :cond_114
    iget-object v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v11, :cond_121

    iget-boolean v11, v11, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v11, :cond_11f

    or-int/lit8 v7, v7, 0x20

    goto :goto_121

    :cond_11f
    and-int/lit8 v7, v7, -0x21

    :cond_121
    :goto_121
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    and-int/2addr v8, v5

    if-eqz v8, :cond_146

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v8, v9, :cond_146

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v8, :cond_146

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    :cond_146
    if-eqz v6, :cond_1f1

    iget-boolean v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v8, :cond_15b

    if-nez p3, :cond_159

    goto :goto_15b

    :cond_159
    move v8, v12

    goto :goto_15c

    :cond_15b
    :goto_15b
    const/4 v8, 0x1

    :goto_15c
    move v4, v8

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_184

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_177

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_177
    and-int/lit16 v8, v6, 0x800

    if-eqz v8, :cond_184

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_184
    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_18d

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_18d
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_196

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :cond_196
    and-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_1b0

    if-eqz v4, :cond_19f

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    goto :goto_1ad

    :cond_19f
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v8, :cond_1ac

    iget-object v8, v8, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v8, :cond_1ac

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v8, v8, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    goto :goto_1ad

    :cond_1ac
    const/4 v8, 0x0

    :goto_1ad
    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1b0
    and-int/lit8 v8, v6, 0x20

    if-eqz v8, :cond_1b9

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    :cond_1b9
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_1c4

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1c4
    and-int/lit16 v8, v6, 0x100

    if-eqz v8, :cond_1cd

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1cd
    and-int/lit16 v8, v6, 0x200

    if-eqz v8, :cond_1d6

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1d6
    and-int/lit16 v8, v6, 0x400

    if-eqz v8, :cond_1df

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1df
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_1e8

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    :cond_1e8
    and-int/lit16 v8, v6, 0x1000

    if-eqz v8, :cond_1f1

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    :cond_1f1
    and-int v8, v5, v10

    if-eqz v8, :cond_20a

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21e

    :cond_20a
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v8, v8, 0x10

    iget v9, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v8, v8, 0x10

    iget v9, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21e
    and-int v8, v5, v13

    if-eqz v8, :cond_22c

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_22c
    and-int v8, v5, v14

    if-eqz v8, :cond_238

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    :cond_238
    and-int v8, v5, v15

    if-eqz v8, :cond_241

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_241
    and-int v8, v5, v16

    if-eqz v8, :cond_24a

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_24a
    and-int v8, v5, v17

    if-eqz v8, :cond_253

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v1, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :cond_253
    and-int v8, v5, v19

    if-eqz v8, :cond_263

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v9, v5, v18

    if-nez v9, :cond_25f

    const/4 v11, 0x1

    goto :goto_260

    :cond_25f
    move v11, v12

    :goto_260
    invoke-virtual {v8, v1, v11, v4}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    :cond_263
    and-int v8, v5, v20

    if-eqz v8, :cond_26c

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_26c
    and-int v8, v5, v21

    if-eqz v8, :cond_275

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_275
    and-int v8, v5, v22

    if-eqz v8, :cond_27e

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_27e
    and-int v8, v5, v23

    if-eqz v8, :cond_287

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_287
    and-int v8, v5, v24

    if-eqz v8, :cond_290

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_290
    return v5
.end method
