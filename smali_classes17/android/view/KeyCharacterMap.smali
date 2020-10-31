.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACCENT_ACUTE:I = 0xb4

.field private static final ACCENT_BREVE:I = 0x2d8

.field private static final ACCENT_CARON:I = 0x2c7

.field private static final ACCENT_CEDILLA:I = 0xb8

.field private static final ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final ACCENT_DOT_BELOW:I = 0x2e

.field private static final ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final ACCENT_GRAVE:I = 0x2cb

.field private static final ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final ACCENT_HORN:I = 0x27

.field private static final ACCENT_MACRON:I = 0xaf

.field private static final ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final ACCENT_OGONEK:I = 0x2db

.field private static final ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final ACCENT_RING_ABOVE:I = 0x2da

.field private static final ACCENT_STROKE:I = 0x2d

.field private static final ACCENT_TILDE:I = 0x2dc

.field private static final ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final ACCENT_UMLAUT:I = 0xa8

.field private static final ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHAR_SPACE:I = 0x20

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL:I = 0x4

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static final sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v0, 0x300

    const/16 v1, 0x2cb

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v2, 0x301

    const/16 v3, 0xb4

    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v2, 0x302

    const/16 v4, 0x2c6

    invoke-static {v2, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v4, 0x303

    const/16 v5, 0x2dc

    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x304

    const/16 v6, 0xaf

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x306

    const/16 v6, 0x2d8

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x307

    const/16 v6, 0x2d9

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x308

    const/16 v6, 0xa8

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x309

    const/16 v6, 0x2c0

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30a

    const/16 v6, 0x2da

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30b

    const/16 v6, 0x2dd

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30c

    const/16 v6, 0x2c7

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30d

    const/16 v6, 0x2c8

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x312

    const/16 v6, 0x2bb

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x313

    const/16 v6, 0x1fbd

    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x314

    const/16 v7, 0x2bd

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x315

    const/16 v7, 0x2bc

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x31b

    const/16 v7, 0x27

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x323

    const/16 v7, 0x2e

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x327

    const/16 v7, 0xb8

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x328

    const/16 v7, 0x2db

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x329

    const/16 v7, 0x2cc

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x331

    const/16 v7, 0x2cd

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x335

    const/16 v7, 0x2d

    invoke-static {v5, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    sget-object v5, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v8, 0x340

    invoke-virtual {v5, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v5, 0x341

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v3, 0x343

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v3, 0x60

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    const/16 v1, 0x110

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x47

    const/16 v1, 0x1e4

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x48

    const/16 v1, 0x126

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x49

    const/16 v1, 0x197

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4c

    const/16 v1, 0x141

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4f

    const/16 v1, 0xd8

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x54

    const/16 v1, 0x166

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x64

    const/16 v1, 0x111

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x67

    const/16 v1, 0x1e5

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x68

    const/16 v1, 0x127

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x69

    const/16 v1, 0x268

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6c

    const/16 v1, 0x142

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6f

    const/16 v1, 0xf8

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x74

    const/16 v1, 0x167

    invoke-static {v7, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not read KeyCharacterMap from parcel."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static addCombining(II)V
    .registers 3

    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private static addDeadKey(III)V
    .registers 6

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_11

    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid dead key declaration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deviceHasKey(I)Z
    .registers 4

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    return v0
.end method

.method public static deviceHasKeys([I)[Z
    .registers 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object v0

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 10

    if-eq p1, p0, :cond_55

    const/16 v0, 0x20

    if-ne v0, p1, :cond_7

    goto :goto_55

    :cond_7
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v2, p1

    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v3

    :try_start_17
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v5, :cond_50

    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    invoke-virtual {v5, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    goto :goto_4a

    :cond_49
    nop

    :goto_4a
    move v4, v1

    sget-object v1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_50
    monitor-exit v3

    return v4

    :catchall_52
    move-exception v1

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_52

    throw v1

    :cond_55
    :goto_55
    return p0
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .registers 6

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_29

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_29

    :cond_12
    new-instance v2, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load key character map for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    :goto_29
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    return-object v2
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetCharacter(JII)C
.end method

.method private static native nativeGetDisplayLabel(JI)C
.end method

.method private static native nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(J)I
.end method

.method private static native nativeGetMatch(JI[CI)C
.end method

.method private static native nativeGetNumber(JI)C
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    :cond_d
    return-void
.end method

.method public get(II)I
    .registers 6

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v0

    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v2, -0x80000000

    or-int/2addr v2, v1

    return v2

    :cond_16
    return v0
.end method

.method public getDisplayLabel(I)C
    .registers 4

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    return v0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .registers 4

    if-eqz p1, :cond_9

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .registers 6

    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    iput v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    return-object v0

    :cond_19
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_46

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v2

    iput-char v2, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    iget-object v2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v3, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v3, v4, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v3

    aput-char v3, v2, v1

    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v4

    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x2

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x3

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    return v4

    :cond_46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "results.meta.length must be >= 4"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardType()I
    .registers 3

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public getMatch(I[CI)C
    .registers 6

    if-eqz p2, :cond_d

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result v0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModifierBehavior()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber(I)C
    .registers 4

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v0

    return v0
.end method

.method public isPrintingKey(I)Z
    .registers 4

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    const/4 v1, 0x1

    return v1

    :pswitch_f
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_12
    .packed-switch 0xc
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
