.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$InternalInsetsSide;,
        Landroid/view/InsetsState$InternalInsetsType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsState;",
            ">;"
        }
    .end annotation
.end field

.field static final FIRST_TYPE:I = 0x0

.field static final ISIDE_BOTTOM:I = 0x3

.field static final ISIDE_FLOATING:I = 0x4

.field static final ISIDE_LEFT:I = 0x0

.field static final ISIDE_RIGHT:I = 0x2

.field static final ISIDE_TOP:I = 0x1

.field static final ISIDE_UNKNOWN:I = 0x5

.field public static final ITYPE_BOTTOM_DISPLAY_CUTOUT:I = 0xc

.field public static final ITYPE_BOTTOM_GESTURES:I = 0x4

.field public static final ITYPE_BOTTOM_TAPPABLE_ELEMENT:I = 0x8

.field public static final ITYPE_CAPTION_BAR:I = 0x2

.field public static final ITYPE_CLIMATE_BAR:I = 0xe

.field public static final ITYPE_EXTRA_NAVIGATION_BAR:I = 0xf

.field public static final ITYPE_IME:I = 0xd

.field public static final ITYPE_INVALID:I = -0x1

.field public static final ITYPE_LEFT_DISPLAY_CUTOUT:I = 0x9

.field public static final ITYPE_LEFT_GESTURES:I = 0x5

.field public static final ITYPE_NAVIGATION_BAR:I = 0x1

.field public static final ITYPE_RIGHT_DISPLAY_CUTOUT:I = 0xb

.field public static final ITYPE_RIGHT_GESTURES:I = 0x6

.field public static final ITYPE_SHELF:I = 0x1

.field public static final ITYPE_STATUS_BAR:I = 0x0

.field public static final ITYPE_TOP_DISPLAY_CUTOUT:I = 0xa

.field public static final ITYPE_TOP_GESTURES:I = 0x3

.field public static final ITYPE_TOP_TAPPABLE_ELEMENT:I = 0x7

.field static final LAST_TYPE:I = 0xf

.field public static final SIZE:I = 0x10


# instance fields
.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mSources:[Landroid/view/InsetsSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method private canControlSide(Landroid/graphics/Rect;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_23

    if-eq p2, v1, :cond_11

    const/4 v2, 0x2

    if-eq p2, v2, :cond_23

    const/4 v2, 0x3

    if-eq p2, v2, :cond_11

    const/4 v2, 0x4

    if-eq p2, v2, :cond_10

    return v0

    :cond_10
    return v1

    :cond_11
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_22

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_22

    move v0, v1

    :cond_22
    return v0

    :cond_23
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_34

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_34

    move v0, v1

    :cond_34
    return v0
.end method

.method public static containsType([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static getDefaultVisibility(I)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getInsetSide(Landroid/graphics/Insets;)I
    .registers 3

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    return v0

    :cond_a
    iget v0, p1, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget v0, p1, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    iget v0, p1, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    return v0

    :cond_1c
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    return v0

    :cond_22
    const/4 v0, 0x5

    return v0
.end method

.method private processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V
    .registers 16

    invoke-virtual {p1, p2, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    const/16 v0, 0x20

    if-ne v8, v0, :cond_25

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    :cond_25
    return-void
.end method

.method private processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V
    .registers 11

    invoke-static {p6}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    aget-object v1, p2, v0

    if-nez v1, :cond_b

    aput-object p5, p2, v0

    goto :goto_11

    :cond_b
    invoke-static {v1, p5}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    aput-object v2, p2, v0

    :goto_11
    if-eqz p4, :cond_19

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    aput-boolean v2, p4, v0

    :cond_19
    if-eqz p3, :cond_29

    invoke-direct {p0, p5}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_29

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_29
    return-void
.end method

.method public static toInternalType(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_51

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_51
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5e

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5e
    return-object v0
.end method

.method public static toPublicType(I)I
    .registers 4

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    const/16 v0, 0x8

    return v0

    :pswitch_1d
    const/16 v0, 0x80

    return v0

    :pswitch_20
    const/16 v0, 0x40

    return v0

    :pswitch_23
    const/16 v0, 0x10

    return v0

    :pswitch_26
    const/16 v0, 0x20

    return v0

    :pswitch_29
    const/4 v0, 0x4

    return v0

    :pswitch_2b
    const/4 v0, 0x2

    return v0

    :pswitch_2d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_26
        :pswitch_23
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1a
        :pswitch_2d
        :pswitch_2b
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITYPE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "ITYPE_EXTRA_NAVIGATION_BAR"

    return-object v0

    :pswitch_18
    const-string v0, "ITYPE_CLIMATE_BAR"

    return-object v0

    :pswitch_1b
    const-string v0, "ITYPE_IME"

    return-object v0

    :pswitch_1e
    const-string v0, "ITYPE_BOTTOM_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_21
    const-string v0, "ITYPE_RIGHT_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_24
    const-string v0, "ITYPE_TOP_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_27
    const-string v0, "ITYPE_LEFT_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_2a
    const-string v0, "ITYPE_BOTTOM_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_2d
    const-string v0, "ITYPE_TOP_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_30
    const-string v0, "ITYPE_RIGHT_GESTURES"

    return-object v0

    :pswitch_33
    const-string v0, "ITYPE_LEFT_GESTURES"

    return-object v0

    :pswitch_36
    const-string v0, "ITYPE_BOTTOM_GESTURES"

    return-object v0

    :pswitch_39
    const-string v0, "ITYPE_TOP_GESTURES"

    return-object v0

    :pswitch_3c
    const-string v0, "ITYPE_CAPTION_BAR"

    return-object v0

    :pswitch_3f
    const-string v0, "ITYPE_NAVIGATION_BAR"

    return-object v0

    :pswitch_42
    const-string v0, "ITYPE_STATUS_BAR"

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addSource(Landroid/view/InsetsSource;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZLandroid/view/DisplayCutout;IIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .registers 36

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x9

    new-array v15, v2, [Landroid/graphics/Insets;

    new-array v2, v2, [Landroid/graphics/Insets;

    const/16 v10, 0x10

    new-array v14, v10, [Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v18, v3

    const/4 v3, 0x0

    move v11, v3

    :goto_1c
    const/16 v3, 0xf

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v11, v3, :cond_b2

    move-object/from16 v13, p0

    iget-object v3, v13, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v12, v3, v11

    if-nez v12, :cond_3d

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    aget-object v4, v15, v3

    if-nez v4, :cond_ac

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aput-object v4, v15, v3

    goto/16 :goto_ac

    :cond_3d
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/16 v9, 0xd

    if-ne v3, v7, :cond_4b

    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    if-eq v3, v9, :cond_4b

    move v3, v7

    goto :goto_4c

    :cond_4b
    move v3, v6

    :goto_4c
    move/from16 v23, v3

    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-eq v3, v4, :cond_58

    if-eqz v11, :cond_56

    if-ne v11, v7, :cond_58

    :cond_56
    move v3, v7

    goto :goto_59

    :cond_58
    move v3, v6

    :goto_59
    move/from16 v24, v3

    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v3, :cond_66

    if-eqz v11, :cond_65

    if-eq v11, v7, :cond_65

    if-ne v11, v9, :cond_66

    :cond_65
    move v6, v7

    :cond_66
    move/from16 v25, v6

    if-nez v24, :cond_9d

    if-nez v25, :cond_9d

    if-eqz v23, :cond_6f

    goto :goto_9d

    :cond_6f
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v8, p9

    move v10, v9

    move-object v9, v14

    invoke-direct/range {v3 .. v9}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    if-eq v3, v10, :cond_ac

    if-eqz v1, :cond_88

    invoke-virtual {v1, v11}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    goto :goto_89

    :cond_88
    move-object v3, v12

    :goto_89
    nop

    if-nez v3, :cond_8d

    goto :goto_ac

    :cond_8d
    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v22}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    goto :goto_ac

    :cond_9d
    :goto_9d
    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    invoke-virtual {v12}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    aput-boolean v4, v14, v3

    nop

    :cond_ac
    :goto_ac
    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x10

    goto/16 :goto_1c

    :cond_b2
    move-object/from16 v13, p0

    move/from16 v3, p6

    and-int/lit16 v12, v3, 0xf0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x10

    if-ne v12, v9, :cond_ca

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v9

    or-int/2addr v8, v9

    :cond_ca
    move/from16 v11, p7

    and-int/lit16 v9, v11, 0x400

    if-eqz v9, :cond_d9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    not-int v9, v9

    and-int/2addr v8, v9

    move/from16 v16, v8

    goto :goto_db

    :cond_d9
    move/from16 v16, v8

    :goto_db
    new-instance v17, Landroid/view/WindowInsets;

    sget v8, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-ne v8, v4, :cond_ea

    move/from16 v4, p8

    and-int/lit16 v8, v4, 0x100

    if-eqz v8, :cond_ec

    move/from16 v19, v7

    goto :goto_ee

    :cond_ea
    move/from16 v4, p8

    :cond_ec
    move/from16 v19, v6

    :goto_ee
    move-object/from16 v6, v17

    move-object v7, v15

    move-object v8, v2

    move-object v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v20, v12

    move-object/from16 v12, p5

    move/from16 v13, v16

    move-object/from16 v21, v14

    move/from16 v14, v19

    invoke-direct/range {v6 .. v14}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;IZ)V

    return-object v17
.end method

.method public calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xf

    if-gt v1, v2, :cond_25

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_22

    :cond_d
    nop

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/view/InsetsState;->canControlSide(Landroid/graphics/Rect;I)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    or-int/2addr v0, v3

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    return v0
.end method

.method public calculateVisibleInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 8

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0xf

    if-gt v1, v2, :cond_2e

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-nez v2, :cond_e

    goto :goto_2b

    :cond_e
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    const/16 v3, 0xd

    if-eq v1, v3, :cond_18

    goto :goto_2b

    :cond_18
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    invoke-static {v3, p2}, Landroid/view/WindowInsets$Type;->isVisibleInsetsType(II)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_2b

    :cond_23
    invoke-virtual {v2, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InsetsState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15
    const/16 v1, 0x10

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    goto :goto_34

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_37
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;ZZ)Z
    .registers 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    return v1

    :cond_20
    const/4 v3, 0x0

    :goto_21
    const/16 v4, 0x10

    if-ge v3, v4, :cond_4b

    if-eqz p2, :cond_2b

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    goto :goto_48

    :cond_2b
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v3

    iget-object v5, v2, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v5, v5, v3

    if-nez v4, :cond_38

    if-nez v5, :cond_38

    goto :goto_48

    :cond_38
    if-eqz v4, :cond_3c

    if-eqz v5, :cond_40

    :cond_3c
    if-nez v4, :cond_41

    if-eqz v5, :cond_41

    :cond_40
    return v1

    :cond_41
    invoke-virtual {v5, v4, p3}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_48

    return v1

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4b
    return v0

    :cond_4c
    :goto_4c
    return v1
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSource(I)Landroid/view/InsetsSource;
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1}, Landroid/view/InsetsSource;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public getSourceOrDefaultVisibility(I)Z
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    :goto_f
    return v1
.end method

.method public hasSources()Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public peekSource(I)Landroid/view/InsetsSource;
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-class v0, Landroid/view/InsetsSource;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    return-void
.end method

.method public removeSource(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public set(Landroid/view/InsetsState;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method public set(Landroid/view/InsetsState;Z)V
    .registers 8

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    if-eqz p2, :cond_23

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_22

    iget-object v2, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    if-eqz v2, :cond_1c

    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    goto :goto_31

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_31

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    iget-object v3, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_31
    :goto_31
    return-void
.end method

.method public setDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSourceVisible(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/view/InsetsSource;->setVisible(Z)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsState: {mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSources= { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
