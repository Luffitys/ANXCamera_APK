.class Landroid/telephony/PhoneNumberUtilsInjector;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 5

    if-nez p2, :cond_7

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    return-void
.end method

.method private static containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_10
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v1, 0x1

    return v1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1f
    return v1
.end method

.method static getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    return-object v0

    :cond_18
    const/4 v2, 0x0

    :goto_19
    array-length v3, v1

    if-ge v2, v3, :cond_33

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtilsInjector;->getPhoneType(ILjava/util/List;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    aget-object v4, v1, v2

    if-nez v4, :cond_2d

    move-object v4, p1

    goto :goto_2f

    :cond_2d
    aget-object v4, v1, v2

    :goto_2f
    return-object v4

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_33
    return-object p1

    :cond_34
    :goto_34
    return-object p1
.end method

.method private static getPhoneType(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_10

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    :cond_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method private static matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z
    .registers 10

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_a5

    return v2

    :cond_d
    const/4 v3, 0x3

    if-ne p1, v3, :cond_a5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_a5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x32

    const/16 v4, 0x31

    const/4 v5, 0x2

    if-ne v0, v4, :cond_28

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_28

    return v2

    :cond_28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x35

    if-ne v0, v4, :cond_37

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_37

    return v2

    :cond_37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_46

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x37

    if-ne v0, v7, :cond_46

    return v2

    :cond_46
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_53

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_53

    return v2

    :cond_53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x33

    if-ne v0, v3, :cond_62

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_62

    return v2

    :cond_62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6f

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6f

    return v2

    :cond_6f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_7c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_7c

    return v2

    :cond_7c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_89

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_89

    return v2

    :cond_89
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x34

    if-ne v0, v3, :cond_98

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_98

    return v2

    :cond_98
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_a5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_a5

    return v2

    :cond_a5
    return v1
.end method

.method public static matchBrazilSuccess(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBrazilCarrierCodeAndPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_20

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    return-object p0
.end method
