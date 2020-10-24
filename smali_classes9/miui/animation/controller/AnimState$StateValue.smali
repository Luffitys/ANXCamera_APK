.class Lmiui/animation/controller/AnimState$StateValue;
.super Ljava/lang/Object;
.source ""


# instance fields
.field config:Lmiui/animation/base/AnimConfig;

.field enable:Z

.field flags:J

.field intValue:I

.field value:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    return-void
.end method

.method constructor <init>(Lmiui/animation/controller/AnimState$StateValue;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    if-eqz p1, :cond_0

    iget v0, p1, Lmiui/animation/controller/AnimState$StateValue;->value:F

    iput v0, p0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    iget v0, p1, Lmiui/animation/controller/AnimState$StateValue;->intValue:I

    iput v0, p0, Lmiui/animation/controller/AnimState$StateValue;->intValue:I

    iget-boolean v0, p1, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    iput-boolean v0, p0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    iget-wide v0, p1, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    iput-wide v0, p0, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    new-instance p1, Lmiui/animation/base/AnimConfig;

    iget-object v0, p0, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    invoke-direct {p1, v0}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/base/AnimConfig;)V

    iput-object p1, p0, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    :cond_0
    return-void
.end method


# virtual methods
.method setFlags(J)Lmiui/animation/controller/AnimState$StateValue;
    .locals 0

    iput-wide p1, p0, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    return-object p0
.end method

.method setIntValue(I)Lmiui/animation/controller/AnimState$StateValue;
    .locals 0

    iput p1, p0, Lmiui/animation/controller/AnimState$StateValue;->intValue:I

    return-object p0
.end method

.method setValue(F)Lmiui/animation/controller/AnimState$StateValue;
    .locals 0

    iput p1, p0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateValue{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", intValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/animation/controller/AnimState$StateValue;->intValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
