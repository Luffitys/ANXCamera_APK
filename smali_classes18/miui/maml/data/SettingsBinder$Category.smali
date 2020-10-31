.class final enum Lmiui/maml/data/SettingsBinder$Category;
.super Ljava/lang/Enum;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/SettingsBinder$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/SettingsBinder$Category;

.field public static final enum Secure:Lmiui/maml/data/SettingsBinder$Category;

.field public static final enum System:Lmiui/maml/data/SettingsBinder$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lmiui/maml/data/SettingsBinder$Category;

    const-string v1, "Secure"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/SettingsBinder$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    new-instance v0, Lmiui/maml/data/SettingsBinder$Category;

    const-string v1, "System"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/SettingsBinder$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    const/4 v1, 0x2

    new-array v1, v1, [Lmiui/maml/data/SettingsBinder$Category;

    sget-object v4, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lmiui/maml/data/SettingsBinder$Category;->$VALUES:[Lmiui/maml/data/SettingsBinder$Category;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/SettingsBinder$Category;
    .registers 2

    const-class v0, Lmiui/maml/data/SettingsBinder$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/SettingsBinder$Category;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/SettingsBinder$Category;
    .registers 1

    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->$VALUES:[Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v0}, [Lmiui/maml/data/SettingsBinder$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/SettingsBinder$Category;

    return-object v0
.end method
