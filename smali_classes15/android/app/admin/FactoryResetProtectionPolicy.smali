.class public final Landroid/app/admin/FactoryResetProtectionPolicy;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FactoryResetProtectionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_FACTORY_RESET_PROTECTION_ACCOUNT:Ljava/lang/String; = "factory_reset_protection_account"

.field private static final KEY_FACTORY_RESET_PROTECTION_ENABLED:Ljava/lang/String; = "factory_reset_protection_enabled"

.field private static final LOG_TAG:Ljava/lang/String; = "FactoryResetProtectionPolicy"


# instance fields
.field private final mFactoryResetProtectionAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryResetProtectionEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/FactoryResetProtectionPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/FactoryResetProtectionPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    iput-boolean p2, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "factory_reset_protection_enabled"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_14
    :goto_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_43

    const/4 v4, 0x3

    if-ne v5, v4, :cond_25

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_43

    :cond_25
    if-eq v5, v4, :cond_14

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2b

    goto :goto_14

    :cond_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "factory_reset_protection_account"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_14

    :cond_38
    const-string/jumbo v4, "value"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_43
    new-instance v4, Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-direct {v4, v2, v1}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_48} :catch_49

    return-object v4

    :catch_49
    move-exception v1

    const-string v2, "FactoryResetProtectionPolicy"

    const-string v3, "Reading from xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryResetProtectionAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    return-object v0
.end method

.method public isFactoryResetProtectionEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    return v0
.end method

.method public isNotEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FactoryResetProtectionPolicy{mFactoryResetProtectionAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFactoryResetProtectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "factory_reset_protection_enabled"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "factory_reset_protection_account"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "value"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    :cond_2d
    return-void
.end method
