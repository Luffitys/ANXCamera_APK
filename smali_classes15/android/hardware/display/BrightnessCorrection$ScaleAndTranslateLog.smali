.class Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleAndTranslateLog"
.end annotation


# static fields
.field private static final ATTR_SCALE:Ljava/lang/String; = "scale"

.field private static final ATTR_TRANSLATE:Ljava/lang/String; = "translate"

.field private static final MAX_SCALE:F = 2.0f

.field private static final MAX_TRANSLATE:F = 0.7f

.field private static final MIN_SCALE:F = 0.5f

.field private static final MIN_TRANSLATE:F = -0.6f


# instance fields
.field private final mScale:F

.field private final mTranslate:F


# direct methods
.method constructor <init>(FF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    const v0, -0x40e66666    # -0.6f

    const v1, 0x3f333333    # 0.7f

    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scale and translate must be numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "scale"

    # invokes: Landroid/hardware/display/BrightnessCorrection;->loadFloatFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    invoke-static {p0, v0}, Landroid/hardware/display/BrightnessCorrection;->access$000(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F

    move-result v0

    const-string/jumbo v1, "translate"

    # invokes: Landroid/hardware/display/BrightnessCorrection;->loadFloatFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    invoke-static {p0, v1}, Landroid/hardware/display/BrightnessCorrection;->access$000(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/display/BrightnessCorrection;->createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v2

    return-object v2
.end method

.method static readFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/display/BrightnessCorrection;->createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public apply(F)F
    .registers 4

    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    iget v3, v1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    iget v4, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    iget v3, v1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    iget v4, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "scale-and-translate-log"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scale"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "translate"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleAndTranslateLog("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
