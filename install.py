from pathlib import Path
import shutil


def main():
    search_result = sorted(Path("/").glob("**/mg5_aMC"))
    mg5_aMC_path = Path(search_result[0])
    # The directory that contains bin/mg5_aMC
    mg5_aMC_root_dir = mg5_aMC_path.parents[1]
    plugin_dir = mg5_aMC_root_dir.joinpath("PLUGIN")

    src_path = Path.cwd().joinpath("MG5aMC_PythonMEs")
    target_path = plugin_dir.joinpath(src_path.name)
    if not target_path.is_dir():
        shutil.copytree(src_path, target_path)
    return 0


if __name__ == "__main__":
    main()
