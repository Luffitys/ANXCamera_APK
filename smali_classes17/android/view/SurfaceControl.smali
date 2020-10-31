.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$MiuiTransaction;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;,
        Landroid/view/SurfaceControl$DisplayConfig;,
        Landroid/view/SurfaceControl$DisplayInfo;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;,
        Landroid/view/SurfaceControl$OnReparentListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURSOR_WINDOW:I = 0x2000

.field private static final FLAG_BLUR:I = 0x10

.field private static final FLAG_BLUR_CURRENT:I = 0x8

.field private static final FLAG_CAST:I = 0x40

.field private static final FLAG_RECORD_HIDE:I = 0x20

.field public static final FX_SURFACE_BLAST:I = 0x40000

.field public static final FX_SURFACE_CONTAINER:I = 0x80000

.field public static final FX_SURFACE_EFFECT:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field private static final INTERNAL_DATASPACE_DISPLAY_P3:I = 0x88a0000

.field private static final INTERNAL_DATASPACE_SCRGB:I = 0x18810000

.field private static final INTERNAL_DATASPACE_SRGB:I = 0x8810000

.field public static final METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final METADATA_MOUSE_CURSOR:I = 0x4

.field public static final METADATA_OWNER_UID:I = 0x1

.field public static final METADATA_TASK_ID:I = 0x3

.field public static final METADATA_WINDOW_TYPE:I = 0x2

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final NO_COLOR_FILL:I = 0x4000

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field public static final WINDOW_TYPE_DONT_SCREENSHOT:I = 0x6bd83

.field static sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

.field static sTransactionNestCount:J


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mHeight:I

.field private mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field private mNativeHandle:J

.field public mNativeObject:J

.field private mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/Surface;Landroid/util/SparseIntArray;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    if-eqz v11, :cond_cc

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "SurfaceControl"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    iput-object v11, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    move/from16 v14, p3

    iput v14, v1, Landroid/view/SurfaceControl;->mWidth:I

    move/from16 v15, p4

    iput v15, v1, Landroid/view/SurfaceControl;->mHeight:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    if-eqz v13, :cond_8d

    :try_start_49
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_8d

    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_57
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_84

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_84
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_8d

    :catchall_89
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_c8

    :cond_8d
    :goto_8d
    nop

    const-wide/16 v16, 0x0

    if-eqz v12, :cond_96

    iget-wide v2, v12, Landroid/view/Surface;->mNativeObject:J
    :try_end_94
    .catchall {:try_start_49 .. :try_end_94} :catchall_89

    move-wide v8, v2

    goto :goto_98

    :cond_96
    move-wide/from16 v8, v16

    :goto_98
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v18, v10

    :try_start_a6
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreatewithParentSurface(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_c7

    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->recycle()V

    nop

    iget-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_bf

    iget-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_bf
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_c7
    move-exception v0

    :goto_c8
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_cc
    move/from16 v14, p3

    move/from16 v15, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/Surface;Landroid/util/SparseIntArray;Landroid/view/SurfaceControl$1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/Surface;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    if-eqz v11, :cond_c3

    iput-object v11, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    move/from16 v14, p3

    iput v14, v1, Landroid/view/SurfaceControl;->mWidth:I

    move/from16 v15, p4

    iput v15, v1, Landroid/view/SurfaceControl;->mHeight:I

    move-object/from16 v10, p9

    iput-object v10, v1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    if-eqz v13, :cond_73

    :try_start_2e
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_73

    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_3c
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_68

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_68
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_73

    :catchall_6d
    move-exception v0

    move-object/from16 v3, p10

    move-object/from16 v20, v8

    goto :goto_bf

    :cond_73
    :goto_73
    nop

    const-wide/16 v16, 0x0

    if-eqz v12, :cond_7d

    iget-wide v2, v12, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_7a
    .catchall {:try_start_2e .. :try_end_7a} :catchall_6d

    move-wide/from16 v18, v2

    goto :goto_7f

    :cond_7d
    move-wide/from16 v18, v16

    :goto_7f
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v20, v8

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    :try_start_91
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_bc

    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    nop

    iget-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_b2

    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    move-object/from16 v3, p10

    invoke-virtual {v0, v2, v3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b2
    move-object/from16 v3, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_bc
    move-exception v0

    move-object/from16 v3, p10

    :goto_bf
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_c3
    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v3, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl$1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static synthetic access$1200(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static synthetic access$1300(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static synthetic access$1400(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetSize(JJII)V

    return-void
.end method

.method static synthetic access$1500(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static synthetic access$1600(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static synthetic access$1700(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static synthetic access$1800(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1900(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static synthetic access$2000(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static synthetic access$2100(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSyncInputWindows(J)V

    return-void
.end method

.method static synthetic access$2200(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static synthetic access$2300(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static synthetic access$2400(JJ[F[F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static synthetic access$2500(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static synthetic access$2600(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static synthetic access$2700(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static synthetic access$2800(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static synthetic access$2900(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static synthetic access$300()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000(JJJJ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JJJJ)V

    return-void
.end method

.method static synthetic access$3100(JJJJ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntilSurface(JJJJ)V

    return-void
.end method

.method static synthetic access$3200(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparentChildren(JJJ)V

    return-void
.end method

.method static synthetic access$3300(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static synthetic access$3400(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSeverChildren(JJ)V

    return-void
.end method

.method static synthetic access$3500(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JJI)V

    return-void
.end method

.method static synthetic access$3600(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static synthetic access$3700(JLandroid/os/IBinder;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$3800(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3900(JLandroid/os/IBinder;IIIIIIIII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static synthetic access$4000(JLandroid/os/IBinder;II)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$4100(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static synthetic access$4200(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeup(J)V

    return-void
.end method

.method static synthetic access$4300(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

    return-void
.end method

.method static synthetic access$4400(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static synthetic access$4500(JJILandroid/os/Parcel;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$4600(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static synthetic access$4700(JJFI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFI)V

    return-void
.end method

.method static synthetic access$4800(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static synthetic access$4900(JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurCrop(JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$500()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5000(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBlurRatio(JJF)V

    return-void
.end method

.method static synthetic access$5100(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBlurMode(JJI)V

    return-void
.end method

.method static synthetic access$5200(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetScreenProjection(JJI)V

    return-void
.end method

.method static synthetic access$5300(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5600()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateMiuiTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5700(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$5800(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetCastMode(JJLandroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$5900(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetLastFrame(JJLandroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$600(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static synthetic access$6000(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyMiuiTransaction(JZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/SurfaceControl;I)I
    .registers 2

    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    return p1
.end method

.method static synthetic access$902(Landroid/view/SurfaceControl;I)I
    .registers 2

    iput p1, p0, Landroid/view/SurfaceControl;->mHeight:I

    return p1
.end method

.method public static acquireFrameRateFlexibilityToken()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeAcquireFrameRateFlexibilityToken()J

    move-result-wide v0

    return-wide v0
.end method

.method private assignNativeObject(JLjava/lang/String;)V
    .registers 8

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, p1, v2

    if-eqz v0, :cond_21

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v2

    :cond_21
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    return-void
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 12

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v7

    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/os/IBinder;JLandroid/graphics/Rect;F[JI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 14

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v7

    array-length v0, p4

    new-array v8, v0, [J

    const/4 v0, 0x0

    :goto_8
    array-length v1, p4

    if-ge v0, v1, :cond_14

    aget-object v1, p4, v0

    iget-wide v1, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v6, 0x1

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/os/IBinder;JLandroid/graphics/Rect;F[JI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checkNotReleased()V
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNativeObject is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearAnimationFrameStats()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .registers 7

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_13
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_20

    monitor-exit v0

    return-void

    :cond_20
    :goto_20
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .registers 3

    if-eqz p0, :cond_6

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveColorMode(Landroid/os/IBinder;)I
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getAutoLowLatencyModeSupport(Landroid/os/IBinder;)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAutoLowLatencyModeSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 7

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    array-length v4, v0

    if-ne v4, v2, :cond_39

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_39

    aget v5, v0, v4

    const/high16 v6, 0x88a0000

    if-eq v5, v6, :cond_2d

    const/high16 v6, 0x18810000

    if-eq v5, v6, :cond_24

    goto :goto_36

    :cond_24
    sget-object v5, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_36

    :cond_2d
    sget-object v5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    nop

    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_39
    return-object v3
.end method

.method public static getDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static getDisplayColorModes(Landroid/os/IBinder;)[I
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 7

    if-eqz p0, :cond_7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGameContentTypeSupport(Landroid/os/IBinder;)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetGameContentTypeSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInternalDisplayToken()Landroid/os/IBinder;
    .registers 3

    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getPhysicalDisplayIds()[J
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 3

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getProtectedContentSupport()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    const-string/jumbo v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-object v2
.end method

.method private static native nativeAcquireFrameRateFlexibilityToken()J
.end method

.method private static native nativeApplyMiuiTransaction(JZ)V
.end method

.method private static native nativeApplyTransaction(JZ)V
.end method

.method private static native nativeCaptureLayers(Landroid/os/IBinder;JLandroid/graphics/Rect;F[JI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCopyFromSurfaceControl(J)J
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateMiuiTransaction()J
.end method

.method private static native nativeCreateTransaction()J
.end method

.method private static native nativeCreatewithParentSurface(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeDeferTransactionUntil(JJJJ)V
.end method

.method private static native nativeDeferTransactionUntilSurface(JJJJ)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveColorMode(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetAutoLowLatencyModeSupport(Landroid/os/IBinder;)Z
.end method

.method private static native nativeGetCompositionDataspaces()[I
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
.end method

.method private static native nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native nativeGetDisplayColorModes(Landroid/os/IBinder;)[I
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;
.end method

.method private static native nativeGetDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;
.end method

.method private static native nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native nativeGetGameContentTypeSupport(Landroid/os/IBinder;)Z
.end method

.method private static native nativeGetHandle(J)J
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeGetNativeTransactionFinalizer()J
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetProtectedContentSupport()Z
.end method

.method private static native nativeMergeTransaction(JJ)V
.end method

.method private static native nativeMirrorSurface(J)J
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReleaseFrameRateFlexibilityToken(J)V
.end method

.method private static native nativeReparent(JJJ)V
.end method

.method private static native nativeReparentChildren(JJJ)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JJF)V
.end method

.method private static native nativeSetAnimationTransaction(J)V
.end method

.method private static native nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native nativeSetBlurCrop(JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method private static native nativeSetBlurMode(JJI)V
.end method

.method private static native nativeSetBlurRatio(JJF)V
.end method

.method private static native nativeSetCastMode(JJLandroid/os/IBinder;Z)V
.end method

.method private static native nativeSetColor(JJ[F)V
.end method

.method private static native nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native nativeSetCornerRadius(JJF)V
.end method

.method private static native nativeSetDesiredDisplayConfigSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z
.end method

.method private static native nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayBrightness(Landroid/os/IBinder;F)Z
.end method

.method private static native nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native nativeSetEarlyWakeup(J)V
.end method

.method private static native nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native nativeSetEarlyWakeupStart(J)V
.end method

.method private static native nativeSetFixedTransformHint(JJI)V
.end method

.method private static native nativeSetFlags(JJII)V
.end method

.method private static native nativeSetFrameRate(JJFI)V
.end method

.method private static native nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native nativeSetLastFrame(JJLandroid/os/IBinder;Z)V
.end method

.method private static native nativeSetLayer(JJI)V
.end method

.method private static native nativeSetLayerStack(JJI)V
.end method

.method private static native nativeSetMatrix(JJFFFF)V
.end method

.method private static native nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native nativeSetOverrideScalingMode(JJI)V
.end method

.method private static native nativeSetPosition(JJFF)V
.end method

.method private static native nativeSetRelativeLayer(JJJI)V
.end method

.method private static native nativeSetScreenProjection(JJI)V
.end method

.method private static native nativeSetShadowRadius(JJF)V
.end method

.method private static native nativeSetSize(JJII)V
.end method

.method private static native nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JJIIII)V
.end method

.method private static native nativeSeverChildren(JJ)V
.end method

.method private static native nativeSyncInputWindows(J)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static openTransaction()V
    .registers 5

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_e

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_e
    monitor-enter v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    :try_start_f
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    return-void

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static releaseFrameRateFlexibilityToken(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeReleaseFrameRateFlexibilityToken(J)V

    return-void
.end method

.method private static rotateCropForSF(Landroid/graphics/Rect;I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    :cond_6
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_16
    return-void
.end method

.method public static screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;
    .registers 14

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "SurfaceControl"

    if-nez v6, :cond_f

    const-string v0, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_f
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p4, v1, :cond_15

    if-ne p4, v0, :cond_1a

    :cond_15
    if-ne p4, v1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    move p4, v0

    :cond_1a
    invoke-static {p0, p4}, Landroid/view/SurfaceControl;->rotateCropForSF(Landroid/graphics/Rect;I)V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v1, "Failed to take screenshot"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2f
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIZI)V

    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIZI)V
    .registers 13

    if-eqz p1, :cond_34

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    :try_start_c
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_33

    :catch_18
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to take screenshot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIZIZ)V
    .registers 15

    if-eqz p1, :cond_31

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    :try_start_d
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_30

    :catch_15
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to take screenshot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Z)V
    .registers 11

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIZIZ)V

    return-void
.end method

.method public static screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 13

    if-eqz p0, :cond_e

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 15

    if-eqz p0, :cond_f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static screenshotToBufferWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 14

    if-eqz p0, :cond_f

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIZIZZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDesiredDisplayConfigSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayConfigSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1f

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1f

    :cond_1a
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result v0

    return v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "brightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .registers 5

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 7

    if-eqz p0, :cond_14

    const/4 v0, 0x4

    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_c

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGameContentType(Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGlobalShadowSettings([F[FFFF)V
    .registers 5

    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    return-void
.end method

.method private static validateColorArg([F)V
    .registers 7

    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    array-length v1, p0

    const-string v2, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_23

    array-length v1, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_22

    aget v4, p0, v3

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_1c

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    return-void

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public clearContentFrameStats()Z
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/SurfaceControl;J)V
    .registers 6

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public detachChildren()V
    .registers 3

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public disconnect()V
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    :cond_b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1b

    :cond_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_1b
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getLocalOwnerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getWidth()I
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public hide()V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isValid()Z
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    :cond_20
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 6

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_14
    return-void
.end method

.method public removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public reparent(Landroid/view/SurfaceControl;)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reparentChildren(Landroid/view/SurfaceControl;)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setAlpha(F)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setBlur(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlur(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setBlurCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBlurCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setBlurCurrent(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurCurrent(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setBlurMode(I)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setBlurRatio(F)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setBufferSize(II)V
    .registers 5

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setColor([F)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setColorSpaceAgnostic(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setLayer(I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setLayerStack(I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setMatrix(FFFF)V
    .registers 12

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setOpaque(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setOverrideScalingMode(I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setPosition(FF)V
    .registers 5

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setRecordHide(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setRecordHide(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setSecure(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public show()V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_2c
    return-void
.end method
