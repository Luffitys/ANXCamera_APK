.class public Lmiui/telephony/phonenumber/Prefix;
.super Ljava/lang/Object;
.source "Prefix.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final PREFIX_10193:Ljava/lang/String; = "10193"

.field public static final PREFIX_11808:Ljava/lang/String; = "11808"

.field public static final PREFIX_12520:Ljava/lang/String; = "12520"

.field public static final PREFIX_125831:Ljava/lang/String; = "125831"

.field public static final PREFIX_125832:Ljava/lang/String; = "125832"

.field public static final PREFIX_125833:Ljava/lang/String; = "125833"

.field public static final PREFIX_12593:Ljava/lang/String; = "12593"

.field public static final PREFIX_17900:Ljava/lang/String; = "17900"

.field public static final PREFIX_17901:Ljava/lang/String; = "17901"

.field public static final PREFIX_17908:Ljava/lang/String; = "17908"

.field public static final PREFIX_17909:Ljava/lang/String; = "17909"

.field public static final PREFIX_17911:Ljava/lang/String; = "17911"

.field public static final PREFIX_17950:Ljava/lang/String; = "17950"

.field public static final PREFIX_17951:Ljava/lang/String; = "17951"

.field public static final PREFIX_17960:Ljava/lang/String; = "17960"

.field public static final PREFIX_17961:Ljava/lang/String; = "17961"

.field public static final PREFIX_17968:Ljava/lang/String; = "17968"

.field public static final PREFIX_17969:Ljava/lang/String; = "17969"

.field public static final PREFIX_17990:Ljava/lang/String; = "17990"

.field public static final PREFIX_17991:Ljava/lang/String; = "17991"

.field public static final PREFIX_17995:Ljava/lang/String; = "17995"

.field public static final PREFIX_17996:Ljava/lang/String; = "17996"

.field public static final SMS_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSmsPrefix(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    sget-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_b
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    return v1
.end method

.method public static parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    if-gtz p2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    const/16 v3, 0x39

    const/16 v4, 0x30

    packed-switch v1, :pswitch_data_224

    goto/16 :goto_223

    :pswitch_14
    const/16 v1, 0xa

    if-lt p2, v1, :cond_223

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_22

    goto/16 :goto_223

    :cond_22
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_223

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-gt v1, v3, :cond_223

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_39
    const/4 v1, 0x4

    if-le p2, v1, :cond_223

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v5, 0x37

    const/16 v6, 0x35

    const/16 v7, 0x38

    if-eq v1, v5, :cond_fc

    const/16 v5, 0x33

    packed-switch v1, :pswitch_data_238

    goto/16 :goto_223

    :pswitch_51
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_223

    const/4 v1, 0x5

    if-le p2, v1, :cond_77

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_77

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_77

    add-int/lit8 v4, p1, 0x5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_77

    const-string v0, "125831"

    return-object v0

    :cond_77
    if-le p2, v1, :cond_96

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_96

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_96

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x32

    if-ne v2, v4, :cond_96

    const-string v0, "125832"

    return-object v0

    :cond_96
    if-le p2, v1, :cond_b3

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_b3

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_b3

    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_b3

    const-string v0, "125833"

    return-object v0

    :cond_b3
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_223

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_223

    const-string v0, "12593"

    return-object v0

    :pswitch_c6
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_223

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_223

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_223

    const-string v0, "11808"

    return-object v0

    :pswitch_e1
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_223

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_223

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_223

    const-string v0, "10193"

    return-object v0

    :cond_fc
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_223

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_117

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_117

    const-string v0, "17900"

    return-object v0

    :cond_117
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_12a

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_12a

    const-string v0, "17901"

    return-object v0

    :cond_12a
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_13d

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_13d

    const-string v0, "17908"

    return-object v0

    :cond_13d
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_150

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_150

    const-string v0, "17909"

    return-object v0

    :cond_150
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_163

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_163

    const-string v0, "17911"

    return-object v0

    :cond_163
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_176

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_176

    const-string v0, "17950"

    return-object v0

    :cond_176
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_189

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_189

    const-string v0, "17951"

    return-object v0

    :cond_189
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v5, 0x36

    if-ne v1, v5, :cond_19e

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_19e

    const-string v0, "17960"

    return-object v0

    :cond_19e
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1b1

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1b1

    const-string v0, "17961"

    return-object v0

    :cond_1b1
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1c4

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_1c4

    const-string v0, "17968"

    return-object v0

    :cond_1c4
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d7

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1d7

    const-string v0, "17969"

    return-object v0

    :cond_1d7
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1ea

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1ea

    const-string v0, "17990"

    return-object v0

    :cond_1ea
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1fd

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1fd

    const-string v0, "17991"

    return-object v0

    :cond_1fd
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_210

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_210

    const-string v0, "17995"

    return-object v0

    :cond_210
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_223

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_223

    const-string v0, "17996"

    return-object v0

    :cond_223
    :goto_223
    return-object v0

    :pswitch_data_224
    .packed-switch 0x31
        :pswitch_39
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x30
        :pswitch_e1
        :pswitch_c6
        :pswitch_51
    .end packed-switch
.end method
