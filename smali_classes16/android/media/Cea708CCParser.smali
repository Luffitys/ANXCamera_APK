.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v2, "\u266b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_18

    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    :cond_18
    return-void
.end method

.method private emitCaptionBuffer()V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1f
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .registers 6

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_39

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_39

    if-ne v0, v1, :cond_36

    :try_start_c
    aget-byte v0, p1, p2

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    :cond_1b
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_2d} :catch_2e

    :goto_2d
    goto :goto_36

    :catch_2e
    move-exception v0

    const-string v1, "Cea708CCParser"

    const-string v2, "P16 Code - Could not find supported encoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    add-int/lit8 p2, p2, 0x2

    goto :goto_94

    :cond_39
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_46

    const/16 v1, 0x17

    if-gt v0, v1, :cond_46

    add-int/lit8 p2, p2, 0x1

    goto :goto_94

    :cond_46
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_86

    const/16 v1, 0x8

    if-eq v0, v1, :cond_78

    packed-switch v0, :pswitch_data_96

    goto :goto_94

    :pswitch_54
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_94

    :pswitch_62
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_94

    :pswitch_6a
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_94

    :cond_78
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_94

    :cond_86
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    nop

    :goto_94
    return p2

    nop

    :pswitch_data_96
    .packed-switch 0xc
        :pswitch_6a
        :pswitch_62
        :pswitch_54
    .end packed-switch
.end method

.method private parseC1([BI)I
    .registers 30

    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xf

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_29c

    :pswitch_15
    goto/16 :goto_299

    :pswitch_17
    add-int/lit16 v1, v1, -0x98

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_21

    move v15, v12

    goto :goto_22

    :cond_21
    move v15, v8

    :goto_22
    aget-byte v2, p1, p2

    const/16 v6, 0x10

    and-int/2addr v2, v6

    if-eqz v2, :cond_2c

    move/from16 v16, v12

    goto :goto_2e

    :cond_2c
    move/from16 v16, v8

    :goto_2e
    aget-byte v2, p1, p2

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    move/from16 v17, v12

    goto :goto_38

    :cond_36
    move/from16 v17, v8

    :goto_38
    aget-byte v2, p1, p2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_46

    move/from16 v19, v12

    goto :goto_48

    :cond_46
    move/from16 v19, v8

    :goto_48
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7f

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xf0

    shr-int/2addr v8, v10

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3f

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, p1, v10

    and-int/lit8 v10, v10, 0x38

    shr-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v5, v11

    add-int/lit8 v11, p2, 0x6

    new-instance v12, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v14, Landroid/media/Cea708CCParser$CaptionWindow;

    move-object v13, v14

    move-object v6, v14

    move v14, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v4

    move/from16 v24, v9

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v13 .. v26}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    const/16 v13, 0x10

    invoke-direct {v12, v13, v6}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v12}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v11

    goto/16 :goto_29b

    :pswitch_99
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v5, p1, p2

    and-int/2addr v5, v11

    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v1, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v7, v13, 0x6

    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0x80

    shr-int/lit8 v6, v13, 0x5

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v5, v7, 0x3

    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v15, v8, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e6

    move/from16 v17, v12

    goto :goto_e8

    :cond_e6
    move/from16 v17, v8

    :goto_e8
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/2addr v7, v10

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    add-int/lit8 v12, p2, 0x2

    aget-byte v12, p1, v12

    and-int/2addr v12, v11

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v10, v13, 0x4

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v9, v13

    shr-int/lit8 v9, v9, 0x2

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v11, v13

    add-int/lit8 v24, p2, 0x4

    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    move/from16 v26, v1

    move-object v1, v13

    move-object v13, v4

    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v12

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    const/16 v13, 0xf

    invoke-direct {v1, v13, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move/from16 v2, v24

    goto/16 :goto_29b

    :pswitch_136
    move v13, v4

    aget-byte v1, p1, p2

    and-int/2addr v1, v13

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v3

    goto/16 :goto_29b

    :pswitch_154
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v4, p1, p2

    and-int/2addr v4, v11

    new-instance v5, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v6, p2, 0x1

    aget-byte v13, p1, v6

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v1, v13, 0x6

    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    aget-byte v7, p1, v6

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    aget-byte v7, p1, v6

    and-int/lit8 v4, v7, 0x3

    new-instance v7, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v6, v12

    aget-byte v13, p1, v6

    and-int/lit8 v13, v13, 0x30

    shr-int/lit8 v2, v13, 0x4

    aget-byte v10, p1, v6

    and-int/2addr v9, v10

    shr-int/lit8 v3, v9, 0x2

    aget-byte v9, p1, v6

    and-int/lit8 v4, v9, 0x3

    new-instance v9, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v9, v8, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    move-object v8, v9

    add-int/2addr v6, v12

    new-instance v9, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v10, 0xd

    new-instance v11, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {v11, v5, v7, v8}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    invoke-direct {v9, v10, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v9}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v6

    goto/16 :goto_29b

    :pswitch_1b0
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/2addr v1, v10

    aget-byte v2, p1, p2

    and-int/2addr v2, v11

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1c8

    move/from16 v20, v12

    goto :goto_1ca

    :cond_1c8
    move/from16 v20, v8

    :goto_1ca
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1d5

    move/from16 v19, v12

    goto :goto_1d7

    :cond_1d5
    move/from16 v19, v8

    :goto_1d7
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x38

    shr-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    new-instance v7, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v8, Landroid/media/Cea708CCParser$CaptionPenAttr;

    move-object v13, v8

    move v14, v2

    move v15, v3

    move/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v7, v9, v8}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v7}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v6

    goto/16 :goto_29b

    :pswitch_1fe
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_299

    :pswitch_20a
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_299

    :pswitch_216
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_22b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_23e
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_251
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_264
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_277
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29b

    :pswitch_28a
    add-int/lit8 v1, v1, -0x80

    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    nop

    :goto_299
    move/from16 v2, p2

    :goto_29b
    return v2

    :pswitch_data_29c
    .packed-switch 0x80
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_277
        :pswitch_264
        :pswitch_251
        :pswitch_23e
        :pswitch_22b
        :pswitch_216
        :pswitch_20a
        :pswitch_1fe
        :pswitch_1b0
        :pswitch_154
        :pswitch_136
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_99
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private parseC2([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_8

    const/4 v1, 0x7

    if-gt v0, v1, :cond_8

    goto :goto_2e

    :cond_8
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_15

    const/16 v1, 0xf

    if-gt v0, v1, :cond_15

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_15
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_22

    const/16 v1, 0x17

    if-gt v0, v1, :cond_22

    add-int/lit8 p2, p2, 0x2

    goto :goto_2e

    :cond_22
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2e

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2e

    add-int/lit8 p2, p2, 0x3

    :cond_2e
    :goto_2e
    return p2
.end method

.method private parseC3([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_d

    const/16 v1, 0x87

    if-gt v0, v1, :cond_d

    add-int/lit8 p2, p2, 0x4

    goto :goto_19

    :cond_d
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x88

    if-lt v0, v1, :cond_19

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_19

    add-int/lit8 p2, p2, 0x5

    :cond_19
    :goto_19
    return p2
.end method

.method private parseExt1([BI)I
    .registers 6

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_14

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_14

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_3e

    :cond_14
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_23

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_23

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_3e

    :cond_23
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_32

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_32

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_3e

    :cond_32
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3e

    if-gt v0, v1, :cond_3e

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    :cond_3e
    :goto_3e
    return p2
.end method

.method private parseG0([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_e
    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_14
    return p2
.end method

.method private parseG1([BI)I
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private parseG2([BI)I
    .registers 3

    nop

    return p2
.end method

.method private parseG3([BI)I
    .registers 3

    nop

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .registers 6

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_12

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_47

    :cond_12
    if-ltz v0, :cond_1d

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1d

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_47

    :cond_1d
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2c

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2c

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_47

    :cond_2c
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3b

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3b

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_47

    :cond_3b
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_47

    if-gt v0, v1, :cond_47

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    :cond_47
    :goto_47
    return p2
.end method


# virtual methods
.method public parse([B)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_9

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
