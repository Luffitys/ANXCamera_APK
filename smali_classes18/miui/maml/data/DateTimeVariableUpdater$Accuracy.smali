.class public final enum Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
.super Ljava/lang/Enum;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Accuracy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Day:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Hour:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Second:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Day"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Hour"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Minute"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Second"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    sget-object v6, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .registers 2

    const-class v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .registers 1

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v0}, [Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-object v0
.end method
